package io.grpc;

import java.util.ArrayList;
import java.util.Iterator;
import p530d.p531a.AbstractC9256j0;
import p530d.p531a.C9303r0;
/* loaded from: classes2-dex2jar.jar:io/grpc/ManagedChannelProvider.class */
public abstract class ManagedChannelProvider {

    /* renamed from: a */
    public static final Iterable<Class<?>> f37967a;

    /* renamed from: b */
    public static final ManagedChannelProvider f37968b;

    /* loaded from: classes2-dex2jar.jar:io/grpc/ManagedChannelProvider$ProviderNotFoundException.class */
    public static final class ProviderNotFoundException extends RuntimeException {
        public static final long serialVersionUID = 1;

        public ProviderNotFoundException(String str) {
            super(str);
        }
    }

    /* renamed from: io.grpc.ManagedChannelProvider$a */
    /* loaded from: classes2-dex2jar.jar:io/grpc/ManagedChannelProvider$a.class */
    public class C10297a implements C9303r0.AbstractC9305b<ManagedChannelProvider> {
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public int mo636b(ManagedChannelProvider managedChannelProvider) {
            return managedChannelProvider.mo641b();
        }

        /* renamed from: b  reason: avoid collision after fix types in other method */
        public boolean mo638a(ManagedChannelProvider managedChannelProvider) {
            return managedChannelProvider.mo643a();
        }
    }

    /* renamed from: io.grpc.ManagedChannelProvider$b */
    /* loaded from: classes2-dex2jar.jar:io/grpc/ManagedChannelProvider$b.class */
    public static final class C10298b implements Iterable<Class<?>> {
        public C10298b() {
        }

        public /* synthetic */ C10298b(C10297a aVar) {
            this();
        }

        @Override // java.lang.Iterable
        public Iterator<Class<?>> iterator() {
            ArrayList arrayList = new ArrayList();
            try {
                arrayList.add(Class.forName("d.a.w0.d"));
            } catch (ClassNotFoundException e) {
            }
            try {
                arrayList.add(Class.forName("io.grpc.netty.NettyChannelProvider"));
            } catch (ClassNotFoundException e2) {
            }
            return arrayList.iterator();
        }
    }

    static {
        C10298b bVar = new C10298b(null);
        f37967a = bVar;
        f37968b = (ManagedChannelProvider) C9303r0.m2968a(ManagedChannelProvider.class, bVar, ManagedChannelProvider.class.getClassLoader(), new C10297a());
    }

    /* renamed from: c */
    public static ManagedChannelProvider m640c() {
        ManagedChannelProvider managedChannelProvider = f37968b;
        if (managedChannelProvider != null) {
            return managedChannelProvider;
        }
        throw new ProviderNotFoundException("No functional channel service provider found. Try adding a dependency on the grpc-okhttp, grpc-netty, or grpc-netty-shaded artifact");
    }

    /* renamed from: a */
    public abstract AbstractC9256j0<?> mo642a(String str);

    /* renamed from: a */
    public abstract boolean mo643a();

    /* renamed from: b */
    public abstract int mo641b();
}
