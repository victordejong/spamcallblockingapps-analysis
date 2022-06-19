.class public final Le/a/i/c0/o/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/c0/o/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/ads/leadgen/dto/LeadgenInput;Ljava/lang/String;Le/a/i/c0/o/e;Landroid/view/ViewGroup;)Le/a/i/c0/o/d;
    .locals 3

    const-string v0, "input"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6c9bdee4    # -2.879397E-27f

    if-eq v1, v2, :cond_2

    const v2, 0x27b94d

    if-eq v1, v2, :cond_1

    const v2, 0x4b123db

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Radio"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Le/a/i/c0/o/h;

    invoke-direct {v0, p1, p2, p3, p4}, Le/a/i/c0/o/h;-><init>(Lcom/truecaller/ads/leadgen/dto/LeadgenInput;Ljava/lang/String;Le/a/i/c0/o/e;Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_1
    const-string v1, "Text"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Le/a/i/c0/o/j;

    invoke-direct {v0, p1, p2, p3, p4}, Le/a/i/c0/o/j;-><init>(Lcom/truecaller/ads/leadgen/dto/LeadgenInput;Ljava/lang/String;Le/a/i/c0/o/e;Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_2
    const-string v1, "Select"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->d()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Le/a/i/c0/o/a;

    invoke-direct {v0, p1, p2, p3, p4}, Le/a/i/c0/o/a;-><init>(Lcom/truecaller/ads/leadgen/dto/LeadgenInput;Ljava/lang/String;Le/a/i/c0/o/e;Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 6
    :cond_3
    new-instance v0, Le/a/i/c0/o/i;

    invoke-direct {v0, p1, p2, p3, p4}, Le/a/i/c0/o/i;-><init>(Lcom/truecaller/ads/leadgen/dto/LeadgenInput;Ljava/lang/String;Le/a/i/c0/o/e;Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
