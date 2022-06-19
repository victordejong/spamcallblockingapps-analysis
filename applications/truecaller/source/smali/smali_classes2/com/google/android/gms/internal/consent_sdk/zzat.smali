.class public final Lcom/google/android/gms/internal/consent_sdk/zzat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/i/b;


# instance fields
.field private final zza:Landroid/app/Application;

.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zzab;

.field private final zzc:Lcom/google/android/gms/internal/consent_sdk/zzbh;

.field private final zzd:Lcom/google/android/gms/internal/consent_sdk/zzal;

.field private final zze:Lcom/google/android/gms/internal/consent_sdk/zzbb;

.field private final zzf:Lcom/google/android/gms/internal/consent_sdk/zzct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/consent_sdk/zzct<",
            "Lcom/google/android/gms/internal/consent_sdk/zzbe;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Landroid/app/Dialog;

.field private zzh:Lcom/google/android/gms/internal/consent_sdk/zzbe;

.field private final zzi:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzj:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/consent_sdk/zzax;",
            ">;"
        }
    .end annotation
.end field

.field private final zzk:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le/m/a/i/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private final zzl:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/consent_sdk/zzay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/google/android/gms/internal/consent_sdk/zzab;Lcom/google/android/gms/internal/consent_sdk/zzbh;Lcom/google/android/gms/internal/consent_sdk/zzal;Lcom/google/android/gms/internal/consent_sdk/zzbb;Lcom/google/android/gms/internal/consent_sdk/zzct;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Lcom/google/android/gms/internal/consent_sdk/zzab;",
            "Lcom/google/android/gms/internal/consent_sdk/zzbh;",
            "Lcom/google/android/gms/internal/consent_sdk/zzal;",
            "Lcom/google/android/gms/internal/consent_sdk/zzbb;",
            "Lcom/google/android/gms/internal/consent_sdk/zzct<",
            "Lcom/google/android/gms/internal/consent_sdk/zzbe;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzi:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzj:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzk:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzl:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zza:Landroid/app/Application;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzab;

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzbh;

    .line 9
    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzal;

    .line 10
    iput-object p5, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zze:Lcom/google/android/gms/internal/consent_sdk/zzbb;

    .line 11
    iput-object p6, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzct;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/consent_sdk/zzat;)Landroid/app/Application;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zza:Landroid/app/Application;

    return-object p0
.end method

.method private final zzd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzg:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    iput-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzg:Landroid/app/Dialog;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzbh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzbh;->zza(Landroid/app/Activity;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzl:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzay;

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzay;->zza(Lcom/google/android/gms/internal/consent_sdk/zzay;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final show(Landroid/app/Activity;Le/m/a/i/b$a;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzcd;->zza()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzi:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzk;

    const-string v0, "ConsentForm#show can only be invoked once."

    invoke-direct {p1, v2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzk;-><init>(ILjava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzk;->zza()Le/m/a/i/f;

    move-result-object p1

    .line 5
    invoke-interface {p2, p1}, Le/m/a/i/b$a;->a(Le/m/a/i/f;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzay;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzay;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzat;Landroid/app/Activity;)V

    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zza:Landroid/app/Application;

    invoke-virtual {v3, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 8
    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzl:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzbh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzbh;->zza(Landroid/app/Activity;)V

    .line 10
    new-instance v0, Landroid/app/Dialog;

    const v3, 0x1030010

    invoke-direct {v0, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzbe;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_1

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzk;

    const-string v0, "Activity with null windows is passed in."

    invoke-direct {p1, v2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzk;-><init>(ILjava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzk;->zza()Le/m/a/i/f;

    move-result-object p1

    .line 16
    invoke-interface {p2, p1}, Le/m/a/i/b$a;->a(Le/m/a/i/f;)V

    return-void

    :cond_1
    const/4 v2, -0x1

    .line 17
    invoke-virtual {p1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 18
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzk:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 21
    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzg:Landroid/app/Dialog;

    return-void
.end method

.method public final zza()Lcom/google/android/gms/internal/consent_sdk/zzbe;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzbe;

    return-object v0
.end method

.method public final zza(II)V
    .locals 3

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzd()V

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzk:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/a/i/b$a;

    if-nez p1, :cond_0

    return-void

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzal;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/consent_sdk/zzal;->zza(I)V

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzal;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzal;->zzb(I)V

    .line 19
    invoke-interface {p1, v0}, Le/m/a/i/b$a;->a(Le/m/a/i/f;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/consent_sdk/zzk;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzj:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzax;

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzk;->zza()Le/m/a/i/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzax;->onConsentFormLoadFailure(Le/m/a/i/f;)V

    return-void
.end method

.method public final zza(Le/m/a/i/h;Le/m/a/i/g;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzct;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzct;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzbe;

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzbe;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzbf;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/consent_sdk/zzbf;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzbe;Lcom/google/android/gms/internal/consent_sdk/zzbg;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzj:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzax;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/consent_sdk/zzax;-><init>(Le/m/a/i/h;Le/m/a/i/g;Lcom/google/android/gms/internal/consent_sdk/zzav;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 6
    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzbe;

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zze:Lcom/google/android/gms/internal/consent_sdk/zzbb;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbb;->zza()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zze:Lcom/google/android/gms/internal/consent_sdk/zzbb;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbb;->zzb()Ljava/lang/String;

    move-result-object v5

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    const/4 v8, 0x0

    .line 9
    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzcd;->zza:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/consent_sdk/zzaw;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/consent_sdk/zzaw;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzat;)V

    const-wide/16 v0, 0x2710

    .line 11
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzj:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzax;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/consent_sdk/zzax;->onConsentFormLoadSuccess(Le/m/a/i/b;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/consent_sdk/zzk;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzd()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzk:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/i/b$a;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzk;->zza()Le/m/a/i/f;

    move-result-object p1

    invoke-interface {v0, p1}, Le/m/a/i/b$a;->a(Le/m/a/i/f;)V

    return-void
.end method

.method public final synthetic zzc()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzk;

    const/4 v1, 0x4

    const-string v2, "Web view timed out."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/zzk;-><init>(ILjava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzat;->zza(Lcom/google/android/gms/internal/consent_sdk/zzk;)V

    return-void
.end method
