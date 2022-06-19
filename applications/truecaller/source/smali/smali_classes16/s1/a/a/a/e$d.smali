.class public final Ls1/a/a/a/e$d;
.super Ls1/a/a/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ls1/a/a/a/v0/e/a0/b/e$b;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/e/a0/b/e$b;)V
    .locals 1

    const-string v0, "signature"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ls1/a/a/a/e;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Ls1/a/a/a/e$d;->b:Ls1/a/a/a/v0/e/a0/b/e$b;

    .line 2
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/a0/b/e$b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/e$d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/e$d;->a:Ljava/lang/String;

    return-object v0
.end method
