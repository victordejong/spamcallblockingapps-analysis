.class public final Le/a/b/a/a/a/d$i;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/a/a/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b/a/a/a/d;


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/d$i;->b:Le/a/b/a/a/a/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b/a/a/a/d$i;->b:Le/a/b/a/a/a/d;

    .line 2
    iget-object v0, v0, Le/a/b/a/a/a/d;->b:Le/a/p5/c0;

    if-eqz v0, :cond_0

    .line 3
    sget v1, Lcom/truecaller/bizmon/R$integer;->BusinessMaxImage:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->h(I)I

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "resourceProvider"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
