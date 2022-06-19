.class public final Le/a/a/c/e5$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/b1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/e5;->nk([Lcom/truecaller/data/entity/messaging/Participant;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/e5;


# direct methods
.method public constructor <init>(Le/a/a/c/e5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/c/e5$h;->a:Le/a/a/c/e5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/a/f4/g/t;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/a/c/e5$h;->a:Le/a/a/c/e5;

    .line 2
    invoke-virtual {p1}, Le/a/a/c/e5;->ek()V

    :cond_0
    return-void
.end method
