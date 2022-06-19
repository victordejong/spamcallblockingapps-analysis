.class public Le/i/b/r1/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/i/b/r1/h;->a(Landroid/view/View;Le/i/b/r1/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/i/b/r1/u;


# direct methods
.method public constructor <init>(Le/i/b/r1/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/r1/h$a;->a:Le/i/b/r1/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/i/b/r1/h$a;->a:Le/i/b/r1/u;

    invoke-interface {p1}, Le/i/b/r1/u;->a()V

    return-void
.end method
