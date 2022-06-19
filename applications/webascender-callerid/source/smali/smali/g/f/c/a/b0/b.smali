.class public final Lg/f/c/a/b0/b;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg/f/c/a/b0/a;

    invoke-direct {v0}, Lg/f/c/a/b0/a;-><init>()V

    invoke-virtual {v0}, Lg/f/c/a/b0/a;->c()Ljava/lang/String;

    .line 2
    invoke-static {}, Lg/f/c/a/f0/d1;->Y()Lg/f/c/a/f0/d1;

    move-result-object v0

    sput-object v0, Lg/f/c/a/b0/b;->a:Lg/f/c/a/f0/d1;

    .line 3
    invoke-static {}, Lg/f/c/a/f0/d1;->Y()Lg/f/c/a/f0/d1;

    move-result-object v0

    sput-object v0, Lg/f/c/a/b0/b;->b:Lg/f/c/a/f0/d1;

    .line 4
    :try_start_0
    invoke-static {}, Lg/f/c/a/b0/b;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
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
    invoke-static {}, Lg/f/c/a/b0/b;->b()V

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
    invoke-static {v0}, Lg/f/c/a/b0/a;->l(Z)V

    .line 2
    invoke-static {}, Lg/f/c/a/b0/d;->d()V

    return-void
.end method
