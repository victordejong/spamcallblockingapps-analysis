package org.apache.commons.p018io.input;
/* renamed from: org.apache.commons.io.input.TailerListener */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/input/TailerListener.class */
public interface TailerListener {
    void fileNotFound();

    void fileRotated();

    void handle(Exception exc);

    void handle(String str);

    void init(Tailer tailer);
}
