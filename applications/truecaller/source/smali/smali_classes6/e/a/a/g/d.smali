.class public final synthetic Le/a/a/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# instance fields
.field public final synthetic a:Le/a/a/g/o;


# direct methods
.method public synthetic constructor <init>(Le/a/a/g/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/g/d;->a:Le/a/a/g/o;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Le/a/a/g/d;->a:Le/a/a/g/o;

    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    .line 1
    invoke-virtual {v0}, Le/a/a/g/o;->i()V

    return-void
.end method
