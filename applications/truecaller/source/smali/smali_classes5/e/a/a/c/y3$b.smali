.class public Le/a/a/c/y3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/j1/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c/y3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/y3;


# direct methods
.method public constructor <init>(Le/a/a/c/y3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/c/y3$b;->a:Le/a/a/c/y3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public V(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/y3$b;->a:Le/a/a/c/y3;

    iget-object v1, v0, Le/a/a/c/y3;->S0:Le/a/a/c/o8/g;

    .line 2
    iget-object v0, v0, Le/a/a/c/y3;->g0:Lcom/truecaller/messaging/views/MediaEditText;

    .line 3
    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, p2, v0}, Le/a/a/c/o8/g;->ff(IILjava/lang/String;)V

    return-void
.end method
