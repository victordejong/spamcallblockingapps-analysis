.class public Le/m/a/g/j/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/m/a/g/j/d;


# direct methods
.method public constructor <init>(Le/m/a/g/j/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/j/h;->a:Le/m/a/g/j/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/m/a/g/j/h;->a:Le/m/a/g/j/d;

    .line 2
    sget-object v0, Le/m/a/g/j/d$e;->a:Le/m/a/g/j/d$e;

    iget-object v1, p1, Le/m/a/g/j/d;->f:Le/m/a/g/j/d$e;

    sget-object v2, Le/m/a/g/j/d$e;->b:Le/m/a/g/j/d$e;

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Le/m/a/g/j/d;->SA(Le/m/a/g/j/d$e;)V

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    .line 4
    invoke-virtual {p1, v2}, Le/m/a/g/j/d;->SA(Le/m/a/g/j/d$e;)V

    :cond_1
    :goto_0
    return-void
.end method
