.class public final Le/a/a/c/d$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/d;->M2(DDLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/d;

.field public final synthetic b:D

.field public final synthetic c:D

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Le/a/a/c/d;DDLjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/d$i;->a:Le/a/a/c/d;

    iput-wide p2, p0, Le/a/a/c/d$i;->b:D

    iput-wide p4, p0, Le/a/a/c/d$i;->c:D

    iput-object p6, p0, Le/a/a/c/d$i;->d:Ljava/lang/String;

    iput p7, p0, Le/a/a/c/d$i;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Le/a/a/c/d$i;->a:Le/a/a/c/d;

    .line 2
    iget-object v0, p1, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    .line 3
    iget-wide v1, p0, Le/a/a/c/d$i;->b:D

    iget-wide v3, p0, Le/a/a/c/d$i;->c:D

    iget-object v5, p0, Le/a/a/c/d$i;->d:Ljava/lang/String;

    iget v6, p0, Le/a/a/c/d$i;->e:I

    invoke-interface/range {v0 .. v6}, Le/a/a/c/k/a/j;->k(DDLjava/lang/String;I)V

    return-void
.end method
