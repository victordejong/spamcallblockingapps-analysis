.class public final Lg/f/c/a/g0/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/f/c/a/f0/d1;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lg/f/c/a/f0/d1;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:Lg/f/c/a/f0/d1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg/f/c/a/g0/b;

    invoke-direct {v0}, Lg/f/c/a/g0/b;-><init>()V

    invoke-virtual {v0}, Lg/f/c/a/g0/b;->c()Ljava/lang/String;

    .line 2
    new-instance v0, Lg/f/c/a/g0/a;

    invoke-direct {v0}, Lg/f/c/a/g0/a;-><init>()V

    invoke-virtual {v0}, Lg/f/c/a/g0/a;->c()Ljava/lang/String;

    .line 3
    new-instance v0, Lg/f/c/a/g0/d;

    invoke-direct {v0}, Lg/f/c/a/g0/d;-><init>()V

    .line 4
    invoke-virtual {v0}, Lg/f/c/a/g0/d;->c()Ljava/lang/String;

    .line 5
    new-instance v0, Lg/f/c/a/g0/c;

    invoke-direct {v0}, Lg/f/c/a/g0/c;-><init>()V

    .line 6
    invoke-virtual {v0}, Lg/f/c/a/g0/c;->c()Ljava/lang/String;

    .line 7
    invoke-static {}, Lg/f/c/a/f0/d1;->Y()Lg/f/c/a/f0/d1;

    move-result-object v0

    sput-object v0, Lg/f/c/a/g0/l;->a:Lg/f/c/a/f0/d1;

    .line 8
    invoke-static {}, Lg/f/c/a/f0/d1;->Y()Lg/f/c/a/f0/d1;

    move-result-object v0

    sput-object v0, Lg/f/c/a/g0/l;->b:Lg/f/c/a/f0/d1;

    .line 9
    invoke-static {}, Lg/f/c/a/f0/d1;->Y()Lg/f/c/a/f0/d1;

    move-result-object v0

    sput-object v0, Lg/f/c/a/g0/l;->c:Lg/f/c/a/f0/d1;

    .line 10
    :try_start_0
    invoke-static {}, Lg/f/c/a/g0/l;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 11
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
    invoke-static {}, Lg/f/c/a/g0/l;->b()V

    return-void
.end method

.method public static b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lg/f/c/a/g0/a;->l(Z)V

    .line 2
    invoke-static {v0}, Lg/f/c/a/g0/c;->l(Z)V

    .line 3
    invoke-static {v0}, Lg/f/c/a/g0/g;->m(Z)V

    .line 4
    invoke-static {v0}, Lg/f/c/a/g0/i;->m(Z)V

    .line 5
    invoke-static {}, Lg/f/c/a/g0/e;->c()V

    .line 6
    invoke-static {}, Lg/f/c/a/g0/f;->c()V

    return-void
.end method
