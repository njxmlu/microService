//�����ռ䶨�壺java��
namespace java cn.wpeace.thrift
//�ṹ�嶨�壺ת��java�е�ʵ����
struct Request{
      1:required string userName;
      2:required string password;
}
//���巵������
struct Student{
        1:required string naem;
        2:required i32 age;
}
//�쳣��������
exception HelloException{
       1:required string msg;
}
//�����壬���ɽӿ���
service StudentService{
			list<Student> getAllStudent(1:Request request)throws (1:HelloException e);
}
//thrift -gen java ./hello.thrift