.class public Le/m/a/g/y/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;


# instance fields
.field public final synthetic a:Le/m/a/g/y/h;


# direct methods
.method public constructor <init>(Le/m/a/g/y/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/y/k;->a:Le/m/a/g/y/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/g/y/k;->a:Le/m/a/g/y/h;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Le/m/a/g/y/h;->i:Z

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    iput-wide v1, v0, Le/m/a/g/y/h;->k:J

    .line 5
    iget-object v0, p0, Le/m/a/g/y/k;->a:Le/m/a/g/y/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le/m/a/g/y/h;->g(Le/m/a/g/y/h;Z)V

    return-void
.end method
