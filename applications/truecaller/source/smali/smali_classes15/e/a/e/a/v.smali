.class public final synthetic Le/a/e/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Le/a/e/a/k3;


# direct methods
.method public synthetic constructor <init>(Le/a/e/a/k3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/a/v;->a:Le/a/e/a/k3;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Le/a/e/a/v;->a:Le/a/e/a/k3;

    .line 1
    iget-object p1, p1, Le/a/e/a/k3;->q:Le/a/b0/e/r/a;

    const-string v0, "featureRegionBr_qa"

    invoke-interface {p1, v0, p2}, Le/a/b0/e/r/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
