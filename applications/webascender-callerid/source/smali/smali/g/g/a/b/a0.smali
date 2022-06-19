.class public Lg/g/a/b/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lretrofit2/Retrofit;)Lg/g/a/a/g/i/b;
    .locals 1

    .line 1
    const-class v0, Lg/g/a/a/g/i/b;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/g/a/a/g/i/b;

    return-object p1
.end method
