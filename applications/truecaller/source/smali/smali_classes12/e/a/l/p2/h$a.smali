.class public final Le/a/l/p2/h$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/p2/h;-><init>(Le/a/b0/o/a;Le/a/s4/a;Le/a/k3/j/g;Le/a/p5/c0;Le/a/l/p2/v0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/data/entity/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/l/p2/h;


# direct methods
.method public constructor <init>(Le/a/l/p2/h;)V
    .locals 0

    iput-object p1, p0, Le/a/l/p2/h$a;->b:Le/a/l/p2/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/p2/h$a;->b:Le/a/l/p2/h;

    .line 2
    iget-object v1, v0, Le/a/l/p2/h;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Le/a/l/p2/h;->g:Le/a/k3/j/g;

    .line 4
    invoke-interface {v0, v1}, Le/a/k3/j/g;->c(Ljava/lang/String;)Ls1/k;

    move-result-object v0

    .line 5
    iget-object v0, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 6
    check-cast v0, Lcom/truecaller/data/entity/Contact;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
