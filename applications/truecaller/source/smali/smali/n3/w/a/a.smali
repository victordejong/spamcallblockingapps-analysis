.class public abstract Ln3/w/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/w/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ln3/v/b0;)Ln3/w/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ln3/v/b0;",
            ":",
            "Ln3/v/c1;",
            ">(TT;)",
            "Ln3/w/a/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/w/a/b;

    move-object v1, p0

    check-cast v1, Ln3/v/c1;

    invoke-interface {v1}, Ln3/v/c1;->getViewModelStore()Ln3/v/b1;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ln3/w/a/b;-><init>(Ln3/v/b0;Ln3/v/b1;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract c(ILandroid/os/Bundle;Ln3/w/a/a$a;)Ln3/w/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Ln3/w/a/a$a<",
            "TD;>;)",
            "Ln3/w/b/b<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract d(ILandroid/os/Bundle;Ln3/w/a/a$a;)Ln3/w/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Ln3/w/a/a$a<",
            "TD;>;)",
            "Ln3/w/b/b<",
            "TD;>;"
        }
    .end annotation
.end method
