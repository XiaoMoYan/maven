package com.ghb.action;

import com.ghb.entity.User;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import java.io.File;
import java.io.IOException;

public class Upload extends ActionSupport {

    private User user;
    private File uploadFile;
    private String uploadFileContentType;
    private String uploadFileFileName;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public File getUploadFile() {
        return uploadFile;
    }

    public void setUploadFile(File uploadFile) {
        this.uploadFile = uploadFile;
    }

    public String getUploadFileContentType() {
        return uploadFileContentType;
    }

    public void setUploadFileContentType(String uploadFileContentType) {
        this.uploadFileContentType = uploadFileContentType;
    }

    public String getUploadFileFileName() {
        return uploadFileFileName;
    }

    public void setUploadFileFileName(String uploadFileFileName) {
        this.uploadFileFileName = uploadFileFileName;
    }

    //注册
    public String execute(){

        String reply="no";
        String uploadpath= ServletActionContext.getServletContext().getRealPath("/upload");
        File file=new File(uploadpath);
        if(file.exists()){
            file.mkdirs();
        }
        try {
            FileUtils.copyFile(uploadFile,new File(file,uploadFileFileName));
            reply="ok";
        } catch (IOException e) {
            e.printStackTrace();
        }

//        user.getUid();
        return reply;
    }


}
