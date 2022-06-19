.class public final Le/a/g/a/a/a$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/g/a/a/a;


# direct methods
.method public constructor <init>(Le/a/g/a/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/a/a$l;->a:Le/a/g/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/g/a/a/a$l;->a:Le/a/g/a/a/a;

    invoke-virtual {v0}, Le/a/g/a/a/a;->VA()Le/a/g/a/a/g;

    move-result-object v0

    check-cast v0, Le/a/g/a/m;

    invoke-virtual {v0}, Le/a/g/a/m;->kk()V

    return-void
.end method
