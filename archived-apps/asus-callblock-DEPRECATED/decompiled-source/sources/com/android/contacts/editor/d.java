package com.android.contacts.editor;

import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.a.b;
/* loaded from: classes-dex2jar.jar:com/android/contacts/editor/d.class */
public interface d {

    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/d$a.class */
    public interface a {
        void a(int i);

        void a(d dVar);
    }

    boolean a();

    void b();

    void c();

    void d();

    void setDeletable(boolean z);

    void setEditorListener(a aVar);

    void setValues(b bVar, RawContactDelta.ValuesDelta valuesDelta, RawContactDelta rawContactDelta, boolean z, ViewIdGenerator viewIdGenerator);
}
