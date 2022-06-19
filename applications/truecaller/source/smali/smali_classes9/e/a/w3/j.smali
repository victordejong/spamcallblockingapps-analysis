.class public final Le/a/w3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/w3/i;


# instance fields
.field public final a:Le/a/y/c/b;


# direct methods
.method public constructor <init>(Le/a/y/c/b;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "flashManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/w3/j;->a:Le/a/y/c/b;

    return-void
.end method


# virtual methods
.method public a(Le/a/i5/d;)V
    .locals 1

    const-string v0, "theme"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p1, p1, Le/a/i5/d$b;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/truecaller/flashsdk/core/Theme;->DARK:Lcom/truecaller/flashsdk/core/Theme;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/truecaller/flashsdk/core/Theme;->LIGHT:Lcom/truecaller/flashsdk/core/Theme;

    .line 3
    :goto_0
    iget-object v0, p0, Le/a/w3/j;->a:Le/a/y/c/b;

    invoke-interface {v0, p1}, Le/a/y/c/b;->s(Lcom/truecaller/flashsdk/core/Theme;)V

    return-void
.end method
