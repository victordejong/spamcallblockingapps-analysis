.class public final Le/a/b0/a/e0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b0/a/e0/d;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b0/a/e0/d;

.field public final synthetic b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Le/a/b0/a/e0/d;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Le/a/b0/a/e0/d$a;->a:Le/a/b0/a/e0/d;

    iput-object p2, p0, Le/a/b0/a/e0/d$a;->b:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b0/a/e0/d$a;->a:Le/a/b0/a/e0/d;

    .line 2
    iget-object v0, v0, Le/a/b0/a/e0/d;->b:Le/a/b0/a/e0/b;

    .line 3
    iget-object v1, p0, Le/a/b0/a/e0/d$a;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method
