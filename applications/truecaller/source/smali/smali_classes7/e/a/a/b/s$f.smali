.class public final Le/a/a/b/s$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b/s;->dn()V
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
        "Landroid/util/SparseBooleanArray;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/b/s;


# direct methods
.method public constructor <init>(Le/a/a/b/s;)V
    .locals 0

    iput-object p1, p0, Le/a/a/b/s$f;->a:Le/a/a/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/util/SparseBooleanArray;

    .line 2
    iget-object p1, p0, Le/a/a/b/s$f;->a:Le/a/a/b/s;

    .line 3
    iget-object v0, p1, Le/a/a/b/s;->k0:Le/a/a/g/g0;

    .line 4
    iget-object p1, p1, Le/a/a/b/s;->D:Lcom/truecaller/messaging/data/types/InboxTab;

    .line 5
    invoke-interface {v0, p1}, Le/a/a/g/g0;->g(Lcom/truecaller/messaging/data/types/InboxTab;)V

    return-void
.end method
