package com.mikepenz.fastadapter;

import com.mikepenz.fastadapter.IIdentifyable;
import com.mikepenz.fastadapter.utils.DefaultIdDistributorImpl;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/IIdDistributor.class */
public interface IIdDistributor<Identifiable extends IIdentifyable> {
    public static final IIdDistributor<? extends IIdentifyable> DEFAULT = new DefaultIdDistributorImpl();

    Identifiable checkId(Identifiable identifiable);

    List<Identifiable> checkIds(List<Identifiable> list);

    Identifiable[] checkIds(Identifiable... identifiableArr);

    long nextId(Identifiable identifiable);
}
