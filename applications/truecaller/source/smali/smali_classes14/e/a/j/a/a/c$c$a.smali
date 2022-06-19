.class public final Le/a/j/a/a/c$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/a/c$c;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/j/e/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/j/a/a/c$c;


# direct methods
.method public constructor <init>(Le/a/j/a/a/c$c;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/a/c$c$a;->a:Le/a/j/a/a/c$c;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/j/e/d$a;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Le/a/j/e/d$a;

    .line 2
    instance-of p2, p1, Le/a/j/e/d$a$d;

    const-string v0, "SingleChoiceQuestionFragment"

    if-eqz p2, :cond_0

    iget-object p1, p0, Le/a/j/a/a/c$c$a;->a:Le/a/j/a/a/c$c;

    iget-object p1, p1, Le/a/j/a/a/c$c;->f:Le/a/j/a/a/c;

    sget-object p2, Le/a/j/a/a/a/c/a;->i:Le/a/j/a/a/a/c/a$f;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p2, Le/a/j/a/a/a/c/a;

    invoke-direct {p2}, Le/a/j/a/a/a/c/a;-><init>()V

    .line 5
    invoke-static {p1, p2, v0}, Le/a/j/a/a/c;->QA(Le/a/j/a/a/c;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    instance-of p2, p1, Le/a/j/e/d$a$a;

    if-eqz p2, :cond_1

    iget-object p1, p0, Le/a/j/a/a/c$c$a;->a:Le/a/j/a/a/c$c;

    iget-object p1, p1, Le/a/j/a/a/c$c;->f:Le/a/j/a/a/c;

    sget-object p2, Le/a/j/a/a/a/a/a;->h:Le/a/j/a/a/a/a/a$e;

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p2, Le/a/j/a/a/a/a/a;

    invoke-direct {p2}, Le/a/j/a/a/a/a/a;-><init>()V

    const-string v0, "BooleanChoiceQuestionFragment"

    .line 9
    invoke-static {p1, p2, v0}, Le/a/j/a/a/c;->QA(Le/a/j/a/a/c;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    instance-of p2, p1, Le/a/j/e/d$a$b;

    if-eqz p2, :cond_2

    iget-object p1, p0, Le/a/j/a/a/c$c$a;->a:Le/a/j/a/a/c$c;

    iget-object p1, p1, Le/a/j/a/a/c$c;->f:Le/a/j/a/a/c;

    sget-object p2, Le/a/j/a/a/a/b/a;->k:Le/a/j/a/a/a/b/a$f;

    .line 11
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance p2, Le/a/j/a/a/a/b/a;

    invoke-direct {p2}, Le/a/j/a/a/a/b/a;-><init>()V

    .line 13
    invoke-static {p1, p2, v0}, Le/a/j/a/a/c;->QA(Le/a/j/a/a/c;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    sget-object p2, Le/a/j/e/d$a$e;->a:Le/a/j/e/d$a$e;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Le/a/j/a/a/c$c$a;->a:Le/a/j/a/a/c$c;

    iget-object p1, p1, Le/a/j/a/a/c$c;->f:Le/a/j/a/a/c;

    invoke-virtual {p1}, Le/a/j/a/a/c;->dismiss()V

    goto :goto_0

    .line 15
    :cond_3
    sget-object p2, Le/a/j/e/d$a$c;->a:Le/a/j/e/d$a$c;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Survey in bottom sheet invalid state, question can\'t be handled"

    .line 16
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Le/a/j/a/a/c$c$a;->a:Le/a/j/a/a/c$c;

    iget-object p1, p1, Le/a/j/a/a/c$c;->f:Le/a/j/a/a/c;

    invoke-virtual {p1}, Le/a/j/a/a/c;->dismiss()V

    .line 18
    :cond_4
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
