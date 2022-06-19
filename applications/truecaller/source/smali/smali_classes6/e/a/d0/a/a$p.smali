.class public final Le/a/d0/a/a$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/truecontext/TrueContext$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d0/a/a;->C0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/d0/a/a;


# direct methods
.method public constructor <init>(Le/a/d0/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/d0/a/a$p;->a:Le/a/d0/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d0/a/a$p;->a:Le/a/d0/a/a;

    invoke-virtual {v0}, Le/a/d0/a/a;->C()Le/a/d0/a/k;

    move-result-object v0

    check-cast v0, Le/a/d0/a/m;

    .line 2
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d0/a/l;

    if-eqz v1, :cond_0

    xor-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2}, Le/a/d0/a/l;->y5(Z)V

    .line 3
    :cond_0
    iget-object v1, v0, Le/a/d0/a/m;->f:Le/a/d0/a/z;

    if-eqz v1, :cond_3

    .line 4
    iget-boolean v1, v0, Le/a/d0/a/m;->e:Z

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 5
    :goto_1
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/l;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Le/a/d0/a/l;->V5(Z)V

    :cond_3
    return-void
.end method
