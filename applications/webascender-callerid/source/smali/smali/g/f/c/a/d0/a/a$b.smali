.class public final Lg/f/c/a/d0/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/c/a/d0/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lg/f/c/a/l;

.field private b:Lg/f/c/a/m;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Lg/f/c/a/f0/u0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lg/f/c/a/d0/a/a$b;->a:Lg/f/c/a/l;

    .line 3
    iput-object v0, p0, Lg/f/c/a/d0/a/a$b;->b:Lg/f/c/a/m;

    .line 4
    iput-object v0, p0, Lg/f/c/a/d0/a/a$b;->c:Ljava/lang/String;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lg/f/c/a/d0/a/a$b;->d:Z

    .line 6
    iput-object v0, p0, Lg/f/c/a/d0/a/a$b;->e:Lg/f/c/a/f0/u0;

    return-void
.end method

.method static synthetic a(Lg/f/c/a/d0/a/a$b;)Lg/f/c/a/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/f/c/a/d0/a/a$b;->a:Lg/f/c/a/l;

    return-object p0
.end method

.method static synthetic b(Lg/f/c/a/d0/a/a$b;)Lg/f/c/a/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/f/c/a/d0/a/a$b;->b:Lg/f/c/a/m;

    return-object p0
.end method

.method static synthetic c(Lg/f/c/a/d0/a/a$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lg/f/c/a/d0/a/a$b;->d:Z

    return p0
.end method

.method static synthetic d(Lg/f/c/a/d0/a/a$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/f/c/a/d0/a/a$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lg/f/c/a/d0/a/a$b;)Lg/f/c/a/f0/u0;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/f/c/a/d0/a/a$b;->e:Lg/f/c/a/f0/u0;

    return-object p0
.end method


# virtual methods
.method public f()Lg/f/c/a/d0/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/d0/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/f/c/a/d0/a/a;-><init>(Lg/f/c/a/d0/a/a$b;Lg/f/c/a/d0/a/a$a;)V

    return-object v0
.end method

.method public g(Lg/f/c/a/f0/u0;)Lg/f/c/a/d0/a/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/f/c/a/d0/a/a$b;->e:Lg/f/c/a/f0/u0;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lg/f/c/a/d0/a/a$b;
    .locals 1

    const-string v0, "android-keystore://"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lg/f/c/a/d0/a/a$b;->c:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key URI must start with android-keystore://"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lg/f/c/a/d0/a/a$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Lg/f/c/a/d0/a/d;

    invoke-direct {v0, p1, p2, p3}, Lg/f/c/a/d0/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lg/f/c/a/d0/a/a$b;->a:Lg/f/c/a/l;

    .line 2
    new-instance v0, Lg/f/c/a/d0/a/e;

    invoke-direct {v0, p1, p2, p3}, Lg/f/c/a/d0/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lg/f/c/a/d0/a/a$b;->b:Lg/f/c/a/m;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "need a keyset name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "need an Android context"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
