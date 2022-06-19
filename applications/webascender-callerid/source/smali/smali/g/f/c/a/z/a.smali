.class public final Lg/f/c/a/z/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Lg/f/c/a/f0/d1;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg/f/c/a/z/d;

    invoke-direct {v0}, Lg/f/c/a/z/d;-><init>()V

    .line 2
    invoke-virtual {v0}, Lg/f/c/a/z/d;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/f/c/a/z/a;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Lg/f/c/a/z/g;

    invoke-direct {v0}, Lg/f/c/a/z/g;-><init>()V

    invoke-virtual {v0}, Lg/f/c/a/z/g;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/f/c/a/z/a;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Lg/f/c/a/z/f;

    invoke-direct {v0}, Lg/f/c/a/z/f;-><init>()V

    invoke-virtual {v0}, Lg/f/c/a/z/f;->c()Ljava/lang/String;

    .line 5
    new-instance v0, Lg/f/c/a/z/i;

    invoke-direct {v0}, Lg/f/c/a/z/i;-><init>()V

    invoke-virtual {v0}, Lg/f/c/a/z/i;->c()Ljava/lang/String;

    .line 6
    new-instance v0, Lg/f/c/a/z/k;

    invoke-direct {v0}, Lg/f/c/a/z/k;-><init>()V

    .line 7
    invoke-virtual {v0}, Lg/f/c/a/z/k;->c()Ljava/lang/String;

    .line 8
    new-instance v0, Lg/f/c/a/z/h;

    invoke-direct {v0}, Lg/f/c/a/z/h;-><init>()V

    .line 9
    invoke-virtual {v0}, Lg/f/c/a/z/h;->c()Ljava/lang/String;

    .line 10
    new-instance v0, Lg/f/c/a/z/l;

    invoke-direct {v0}, Lg/f/c/a/z/l;-><init>()V

    .line 11
    invoke-virtual {v0}, Lg/f/c/a/z/l;->c()Ljava/lang/String;

    .line 12
    invoke-static {}, Lg/f/c/a/f0/d1;->Y()Lg/f/c/a/f0/d1;

    move-result-object v0

    sput-object v0, Lg/f/c/a/z/a;->c:Lg/f/c/a/f0/d1;

    .line 13
    :try_start_0
    invoke-static {}, Lg/f/c/a/z/a;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 14
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lg/f/c/a/z/a;->b()V

    return-void
.end method

.method public static b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lg/f/c/a/e0/c;->b()V

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lg/f/c/a/z/d;->l(Z)V

    .line 3
    invoke-static {v0}, Lg/f/c/a/z/f;->l(Z)V

    .line 4
    invoke-static {v0}, Lg/f/c/a/z/g;->l(Z)V

    .line 5
    invoke-static {v0}, Lg/f/c/a/z/h;->l(Z)V

    .line 6
    invoke-static {v0}, Lg/f/c/a/z/i;->l(Z)V

    .line 7
    invoke-static {v0}, Lg/f/c/a/z/k;->l(Z)V

    .line 8
    invoke-static {v0}, Lg/f/c/a/z/l;->l(Z)V

    .line 9
    invoke-static {}, Lg/f/c/a/z/c;->d()V

    return-void
.end method
