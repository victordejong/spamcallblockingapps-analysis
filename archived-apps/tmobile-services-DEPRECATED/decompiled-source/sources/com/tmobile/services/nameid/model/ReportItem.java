package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/ReportItem.class */
public class ReportItem implements Serializable {
    @SerializedName("answer")
    @Expose
    private String answer;
    @SerializedName("question")
    @Expose
    private String question;

    public ReportItem(String str, String str2) {
        this.answer = str;
        this.question = str2;
    }

    public String getAnswer() {
        return this.answer;
    }

    public String getQuestion() {
        return this.question;
    }
}
