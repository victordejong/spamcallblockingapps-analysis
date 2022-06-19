.class public abstract Le/a/i/c0/o/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;

.field public final b:Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

.field public final c:Ljava/lang/String;

.field public final d:Le/a/i/c0/o/e;


# direct methods
.method public constructor <init>(Lcom/truecaller/ads/leadgen/dto/LeadgenInput;Ljava/lang/String;Le/a/i/c0/o/e;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/c0/o/d;->b:Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    iput-object p2, p0, Le/a/i/c0/o/d;->c:Ljava/lang/String;

    iput-object p3, p0, Le/a/i/c0/o/d;->d:Le/a/i/c0/o/e;

    .line 2
    new-instance p1, Le/a/i/c0/o/d$a;

    invoke-direct {p1, p0, p4}, Le/a/i/c0/o/d$a;-><init>(Le/a/i/c0/o/d;Landroid/view/ViewGroup;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/i/c0/o/d;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Landroid/view/View;)V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method
