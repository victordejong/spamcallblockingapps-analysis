.class public final Le/a/p5/k0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p5/k0;->a(ILjava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/p5/k0;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/CharSequence;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Le/a/p5/k0;ILjava/lang/CharSequence;I)V
    .locals 0

    iput-object p1, p0, Le/a/p5/k0$a;->a:Le/a/p5/k0;

    iput p2, p0, Le/a/p5/k0$a;->b:I

    iput-object p3, p0, Le/a/p5/k0$a;->c:Ljava/lang/CharSequence;

    iput p4, p0, Le/a/p5/k0$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/p5/k0$a;->a:Le/a/p5/k0;

    .line 2
    iget-object v0, v0, Le/a/p5/k0;->b:Landroid/content/Context;

    .line 3
    iget v1, p0, Le/a/p5/k0$a;->b:I

    .line 4
    iget-object v2, p0, Le/a/p5/k0$a;->c:Ljava/lang/CharSequence;

    .line 5
    iget v3, p0, Le/a/p5/k0$a;->d:I

    .line 6
    invoke-static {v0, v1, v2, v3}, Le/a/p5/s0/g;->R1(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    return-void
.end method
