.class public final Le/a/h/s0/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/s0/n;->ba(Lcom/truecaller/data/entity/Contact;Ljava/util/ArrayList;ZZZZZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Lcom/truecaller/data/entity/HistoryEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/data/entity/Number;

.field public final synthetic b:Le/a/h/s0/n;


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/Number;Le/a/h/s0/n;)V
    .locals 0

    iput-object p1, p0, Le/a/h/s0/n$b;->a:Lcom/truecaller/data/entity/Number;

    iput-object p2, p0, Le/a/h/s0/n$b;->b:Le/a/h/s0/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/truecaller/data/entity/HistoryEvent;

    .line 2
    iget-object v0, p0, Le/a/h/s0/n$b;->b:Le/a/h/s0/n;

    iget-object v1, p0, Le/a/h/s0/n$b;->a:Lcom/truecaller/data/entity/Number;

    .line 3
    iget-object v2, v0, Le/a/h/s0/n;->n:Le/a/h/s0/b;

    .line 4
    iget-object v2, v2, Le/a/h/s0/b;->d:Ljava/util/ArrayList;

    .line 5
    new-instance v3, Le/a/h/s0/d;

    invoke-direct {v3, v1, p1}, Le/a/h/s0/d;-><init>(Lcom/truecaller/data/entity/Number;Lcom/truecaller/data/entity/HistoryEvent;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/s0/m;

    if-eqz p1, :cond_0

    iget-object v0, v0, Le/a/h/s0/n;->n:Le/a/h/s0/b;

    .line 7
    iget-object v0, v0, Le/a/h/s0/b;->d:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Le/a/h/s0/m;->a(I)V

    :cond_0
    return-void
.end method
