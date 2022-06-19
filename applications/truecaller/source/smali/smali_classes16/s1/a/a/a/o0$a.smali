.class public final Ls1/a/a/a/o0$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/o0;->c(Ls1/a/a/a/v0/b/v;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/b/b1;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/o0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/o0$a;

    invoke-direct {v0}, Ls1/a/a/a/o0$a;-><init>()V

    sput-object v0, Ls1/a/a/a/o0$a;->b:Ls1/a/a/a/o0$a;

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

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/b1;

    .line 2
    sget-object v0, Ls1/a/a/a/o0;->b:Ls1/a/a/a/o0;

    const-string v0, "it"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    const-string v0, "it.type"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/a/a/a/o0;->e(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
