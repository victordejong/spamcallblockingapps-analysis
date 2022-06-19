.class public final Ls1/a/a/a/v0/j/v/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/b/k;",
        "Ls1/a/a/a/v0/b/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/j/v/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/j/v/e;

    invoke-direct {v0}, Ls1/a/a/a/v0/j/v/e;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/j/v/e;->b:Ls1/a/a/a/v0/j/v/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ls1/a/a/a/v0/b/k;

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->b()Ls1/a/a/a/v0/b/k;

    move-result-object p1

    return-object p1
.end method
