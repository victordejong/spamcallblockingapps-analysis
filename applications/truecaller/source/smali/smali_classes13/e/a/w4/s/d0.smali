.class public Le/a/w4/s/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/content/Context;

.field public final e:Z


# direct methods
.method public constructor <init>(ILcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;Landroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/a/w4/s/d0;->a:I

    .line 3
    iput-object p2, p0, Le/a/w4/s/d0;->b:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    .line 4
    iput-object p3, p0, Le/a/w4/s/d0;->d:Landroid/content/Context;

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Le/a/w4/s/d0;->c:Landroid/os/Handler;

    .line 6
    iput-boolean p4, p0, Le/a/w4/s/d0;->e:Z

    return-void
.end method
