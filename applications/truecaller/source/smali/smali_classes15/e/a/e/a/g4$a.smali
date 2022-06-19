.class public final Le/a/e/a/g4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/g4;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/a/g4;


# direct methods
.method public constructor <init>(Le/a/e/a/g4;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/g4$a;->a:Le/a/e/a/g4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/e/a/g4$a;->a:Le/a/e/a/g4;

    invoke-virtual {p1}, Le/m/a/g/e/e;->dismiss()V

    return-void
.end method
