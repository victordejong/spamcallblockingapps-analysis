.class public final Le/a/i/c0/o/d$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/c0/o/d;-><init>(Lcom/truecaller/ads/leadgen/dto/LeadgenInput;Ljava/lang/String;Le/a/i/c0/o/e;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/i/c0/o/d;

.field public final synthetic c:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Le/a/i/c0/o/d;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Le/a/i/c0/o/d$a;->b:Le/a/i/c0/o/d;

    iput-object p2, p0, Le/a/i/c0/o/d$a;->c:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/i/c0/o/d$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/i/c0/o/d$a;->b:Le/a/i/c0/o/d;

    invoke-virtual {v1}, Le/a/i/c0/o/d;->a()I

    move-result v1

    iget-object v2, p0, Le/a/i/c0/o/d$a;->c:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/i/c0/o/d$a;->b:Le/a/i/c0/o/d;

    invoke-virtual {v1, v0}, Le/a/i/c0/o/d;->b(Landroid/view/View;)V

    return-object v0
.end method
