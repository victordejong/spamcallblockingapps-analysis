.class public Le/a/h0/a/d0/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h0/a/d0/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/h0/a/d0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Le/a/h0/a/d0/h;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x1020014

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Le/a/h0/a/d0/h$a;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h0/a/d0/h$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
