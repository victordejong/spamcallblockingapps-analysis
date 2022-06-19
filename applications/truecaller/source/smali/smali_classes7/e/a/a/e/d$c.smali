.class public final Le/a/a/e/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/e/d;->X1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/e/d;


# direct methods
.method public constructor <init>(Le/a/a/e/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/e/d$c;->a:Le/a/a/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/a/e/d$c;->a:Le/a/a/e/d;

    invoke-virtual {p1}, Le/a/a/e/d;->PA()Le/a/a/e/g;

    move-result-object p1

    invoke-interface {p1, p2}, Le/a/a/e/g;->f2(Z)V

    return-void
.end method
