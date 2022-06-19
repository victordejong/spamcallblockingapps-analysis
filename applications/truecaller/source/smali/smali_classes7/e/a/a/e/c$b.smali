.class public final Le/a/a/e/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/e/c;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Le/a/a/e/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/e/c;

.field public final synthetic b:Le/a/a/e/s;


# direct methods
.method public constructor <init>(Le/a/a/e/c;Le/a/a/e/s;)V
    .locals 0

    iput-object p1, p0, Le/a/a/e/c$b;->a:Le/a/a/e/c;

    iput-object p2, p0, Le/a/a/e/c$b;->b:Le/a/a/e/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/a/e/c$b;->b:Le/a/a/e/s;

    invoke-interface {p1}, Le/a/a/e/s;->r1()V

    .line 2
    iget-object p1, p0, Le/a/a/e/c$b;->a:Le/a/a/e/c;

    invoke-virtual {p1}, Ln3/b/a/p;->dismiss()V

    return-void
.end method
