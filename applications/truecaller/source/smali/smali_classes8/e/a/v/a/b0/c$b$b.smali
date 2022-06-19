.class public final Le/a/v/a/b0/c$b$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/b0/c$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/data/entity/HistoryEvent;

.field public final synthetic c:Le/a/v/a/b0/c$b;


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/HistoryEvent;Le/a/v/a/b0/c$b;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/b0/c$b$b;->b:Lcom/truecaller/data/entity/HistoryEvent;

    iput-object p2, p0, Le/a/v/a/b0/c$b$b;->c:Le/a/v/a/b0/c$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/b0/c$b$b;->c:Le/a/v/a/b0/c$b;

    iget-object v0, v0, Le/a/v/a/b0/c$b;->g:Le/a/v/a/b0/c;

    iget-object v1, p0, Le/a/v/a/b0/c$b$b;->b:Lcom/truecaller/data/entity/HistoryEvent;

    .line 2
    invoke-virtual {v0, v1}, Le/a/v/a/b0/c;->Ij(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/v/a/b0/c$b$b;->c:Le/a/v/a/b0/c$b;

    iget-object v1, v0, Le/a/v/a/b0/c$b;->g:Le/a/v/a/b0/c;

    .line 4
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/b0/b;

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, v0, Le/a/v/a/b0/c$b;->f:Lcom/truecaller/data/entity/Contact;

    invoke-interface {v1, v0}, Le/a/v/a/b0/b;->e(Lcom/truecaller/data/entity/Contact;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/v/a/b0/c$b$b;->c:Le/a/v/a/b0/c$b;

    iget-object v1, v0, Le/a/v/a/b0/c$b;->g:Le/a/v/a/b0/c;

    .line 7
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/b0/b;

    if-eqz v1, :cond_1

    .line 8
    iget-object v0, v0, Le/a/v/a/b0/c$b;->f:Lcom/truecaller/data/entity/Contact;

    invoke-interface {v1, v0}, Le/a/v/a/b0/b;->a(Lcom/truecaller/data/entity/Contact;)V

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
