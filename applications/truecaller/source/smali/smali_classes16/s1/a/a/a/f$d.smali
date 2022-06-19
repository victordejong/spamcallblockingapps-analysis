.class public final Ls1/a/a/a/f$d;
.super Ls1/a/a/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/e$e;

.field public final b:Ls1/a/a/a/e$e;


# direct methods
.method public constructor <init>(Ls1/a/a/a/e$e;Ls1/a/a/a/e$e;)V
    .locals 1

    const-string v0, "getterSignature"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ls1/a/a/a/f;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Ls1/a/a/a/f$d;->a:Ls1/a/a/a/e$e;

    iput-object p2, p0, Ls1/a/a/a/f$d;->b:Ls1/a/a/a/e$e;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/f$d;->a:Ls1/a/a/a/e$e;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/e$e;->a:Ljava/lang/String;

    return-object v0
.end method
