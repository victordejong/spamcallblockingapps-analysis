.class public final Le/a/b/a/c/a/d0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/c/a/d0/a;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le/a/b/a/i/a;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 2
    new-instance p1, Le/a/b/a/i/a$a$a;

    sget v0, Lcom/truecaller/bizmon/R$string;->BusinessProfileOnboarding_NameNotEntered:I

    invoke-direct {p1, v0}, Le/a/b/a/i/a$a$a;-><init>(I)V

    goto :goto_2

    :cond_2
    const-string v0, "^(?=.{2,50}$)([a-zA-Z]+[ ]?[a-zA-Z1-9_]*)+$"

    .line 3
    invoke-static {v0, p1}, Le/d/c/a/a;->Z0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    sget-object p1, Le/a/b/a/i/a$b;->b:Le/a/b/a/i/a$b;

    goto :goto_2

    .line 5
    :cond_3
    new-instance p1, Le/a/b/a/i/a$a;

    sget v0, Lcom/truecaller/bizmon/R$string;->BusinessProfileOnboarding_NameInvalidError:I

    invoke-direct {p1, v0}, Le/a/b/a/i/a$a;-><init>(I)V

    :goto_2
    return-object p1
.end method
