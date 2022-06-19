.class public final Le/a/a/c/g4$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/g4;->C2(Lcom/truecaller/messaging/data/types/Message;)V
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
        "Lcom/truecaller/messaging/data/types/Message;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/g4;

.field public final synthetic b:Lcom/truecaller/messaging/data/types/Message;


# direct methods
.method public constructor <init>(Le/a/a/c/g4;Lcom/truecaller/messaging/data/types/Message;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/g4$f;->a:Le/a/a/c/g4;

    iput-object p2, p0, Le/a/a/c/g4$f;->b:Lcom/truecaller/messaging/data/types/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    .line 2
    iget-object p1, p0, Le/a/a/c/g4$f;->a:Le/a/a/c/g4;

    .line 3
    iget-object p1, p1, Le/a/a/c/g4;->Z:Lo3/a;

    .line 4
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/m;

    iget-object v0, p0, Le/a/a/c/g4$f;->b:Lcom/truecaller/messaging/data/types/Message;

    .line 5
    iget-wide v0, v0, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 6
    invoke-interface {p1, v0, v1}, Le/a/a/g/m;->o(J)V

    return-void
.end method
