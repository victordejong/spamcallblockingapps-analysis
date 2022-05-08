package com.google.android.datatransport.cct.p006a;

import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;
import java.io.IOException;
/* renamed from: com.google.android.datatransport.cct.a.zzb */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzb.class */
public final class zzb implements Configurator {

    /* renamed from: a */
    public static final Configurator f6521a = new zzb();

    /* renamed from: com.google.android.datatransport.cct.a.zzb$zza */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzb$zza.class */
    private static final class zza implements ObjectEncoder<com.google.android.datatransport.cct.p006a.zza> {

        /* renamed from: a */
        static final zza f6522a = new zza();

        private zza() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder, com.google.firebase.encoders.Encoder
        public void encode(Object obj, ObjectEncoderContext objectEncoderContext) throws IOException {
            com.google.android.datatransport.cct.p006a.zza zzaVar = (com.google.android.datatransport.cct.p006a.zza) obj;
            ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
            objectEncoderContext2.add("sdkVersion", zzaVar.mo15542i());
            objectEncoderContext2.add("model", zzaVar.mo15545f());
            objectEncoderContext2.add("hardware", zzaVar.mo15547d());
            objectEncoderContext2.add("device", zzaVar.mo15549b());
            objectEncoderContext2.add("product", zzaVar.mo15543h());
            objectEncoderContext2.add("osBuild", zzaVar.mo15544g());
            objectEncoderContext2.add("manufacturer", zzaVar.mo15546e());
            objectEncoderContext2.add("fingerprint", zzaVar.mo15548c());
        }
    }

    /* renamed from: com.google.android.datatransport.cct.a.zzb$zzb  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzb$zzb.class */
    private static final class C2476zzb implements ObjectEncoder<zzo> {

        /* renamed from: a */
        static final C2476zzb f6523a = new C2476zzb();

        private C2476zzb() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder, com.google.firebase.encoders.Encoder
        public void encode(Object obj, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add("logRequest", ((zzo) obj).mo15529b());
        }
    }

    /* renamed from: com.google.android.datatransport.cct.a.zzb$zzc */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzb$zzc.class */
    private static final class zzc implements ObjectEncoder<zzp> {

        /* renamed from: a */
        static final zzc f6524a = new zzc();

        private zzc() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder, com.google.firebase.encoders.Encoder
        public void encode(Object obj, ObjectEncoderContext objectEncoderContext) throws IOException {
            zzp zzpVar = (zzp) obj;
            ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
            objectEncoderContext2.add("clientType", zzpVar.mo15526c());
            objectEncoderContext2.add("androidClientInfo", zzpVar.mo15527b());
        }
    }

    /* renamed from: com.google.android.datatransport.cct.a.zzb$zzd */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzb$zzd.class */
    private static final class zzd implements ObjectEncoder<zzq> {

        /* renamed from: a */
        static final zzd f6525a = new zzd();

        private zzd() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder, com.google.firebase.encoders.Encoder
        public void encode(Object obj, ObjectEncoderContext objectEncoderContext) throws IOException {
            zzq zzqVar = (zzq) obj;
            ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
            objectEncoderContext2.add("eventTimeMs", zzqVar.mo15519d());
            objectEncoderContext2.add("eventCode", zzqVar.mo15520c());
            objectEncoderContext2.add("eventUptimeMs", zzqVar.mo15518e());
            objectEncoderContext2.add("sourceExtension", zzqVar.mo15516g());
            objectEncoderContext2.add("sourceExtensionJsonProto3", zzqVar.mo15515h());
            objectEncoderContext2.add("timezoneOffsetSeconds", zzqVar.mo15514i());
            objectEncoderContext2.add("networkConnectionInfo", zzqVar.mo15517f());
        }
    }

    /* renamed from: com.google.android.datatransport.cct.a.zzb$zze */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzb$zze.class */
    private static final class zze implements ObjectEncoder<zzr> {

        /* renamed from: a */
        static final zze f6526a = new zze();

        private zze() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder, com.google.firebase.encoders.Encoder
        public void encode(Object obj, ObjectEncoderContext objectEncoderContext) throws IOException {
            zzr zzrVar = (zzr) obj;
            ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
            objectEncoderContext2.add("requestTimeMs", zzrVar.mo15501g());
            objectEncoderContext2.add("requestUptimeMs", zzrVar.mo15500h());
            objectEncoderContext2.add("clientInfo", zzrVar.mo15506b());
            objectEncoderContext2.add("logSource", zzrVar.mo15504d());
            objectEncoderContext2.add("logSourceName", zzrVar.mo15503e());
            objectEncoderContext2.add("logEvent", zzrVar.mo15505c());
            objectEncoderContext2.add("qosTier", zzrVar.mo15502f());
        }
    }

    /* renamed from: com.google.android.datatransport.cct.a.zzb$zzf */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzb$zzf.class */
    private static final class zzf implements ObjectEncoder<zzt> {

        /* renamed from: a */
        static final zzf f6527a = new zzf();

        private zzf() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder, com.google.firebase.encoders.Encoder
        public void encode(Object obj, ObjectEncoderContext objectEncoderContext) throws IOException {
            zzt zztVar = (zzt) obj;
            ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
            objectEncoderContext2.add("networkType", zztVar.mo15485c());
            objectEncoderContext2.add("mobileSubtype", zztVar.mo15486b());
        }
    }

    private zzb() {
    }

    @Override // com.google.firebase.encoders.config.Configurator
    public void configure(EncoderConfig<?> encoderConfig) {
        encoderConfig.registerEncoder(zzo.class, C2476zzb.f6523a);
        encoderConfig.registerEncoder(com.google.android.datatransport.cct.p006a.zze.class, C2476zzb.f6523a);
        encoderConfig.registerEncoder(zzr.class, zze.f6526a);
        encoderConfig.registerEncoder(zzk.class, zze.f6526a);
        encoderConfig.registerEncoder(zzp.class, zzc.f6524a);
        encoderConfig.registerEncoder(zzg.class, zzc.f6524a);
        encoderConfig.registerEncoder(com.google.android.datatransport.cct.p006a.zza.class, zza.f6522a);
        encoderConfig.registerEncoder(com.google.android.datatransport.cct.p006a.zzd.class, zza.f6522a);
        encoderConfig.registerEncoder(zzq.class, zzd.f6525a);
        encoderConfig.registerEncoder(zzi.class, zzd.f6525a);
        encoderConfig.registerEncoder(zzt.class, zzf.f6527a);
        encoderConfig.registerEncoder(zzn.class, zzf.f6527a);
    }
}
