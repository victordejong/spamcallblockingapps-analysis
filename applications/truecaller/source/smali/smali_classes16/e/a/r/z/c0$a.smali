.class public final Le/a/r/z/c0$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/z/c0;-><init>(Le/a/u3/g;Le/a/b0/e/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/wizard/verification/WizardContactSupportConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/r/z/c0;


# direct methods
.method public constructor <init>(Le/a/r/z/c0;)V
    .locals 0

    iput-object p1, p0, Le/a/r/z/c0$a;->b:Le/a/r/z/c0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/r/z/c0$a;->b:Le/a/r/z/c0;

    .line 2
    iget-object v0, v0, Le/a/r/z/c0;->c:Le/a/u3/g;

    .line 3
    iget-object v1, v0, Le/a/u3/g;->G3:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xf2

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 4
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 5
    :try_start_0
    iget-object v1, p0, Le/a/r/z/c0$a;->b:Le/a/r/z/c0;

    .line 6
    iget-object v1, v1, Le/a/r/z/c0;->a:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/e/k;

    .line 7
    const-class v3, Lcom/truecaller/wizard/verification/WizardContactSupportConfig;

    .line 8
    invoke-virtual {v1, v0, v3}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    invoke-static {v3}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Lcom/truecaller/wizard/verification/WizardContactSupportConfig;
    :try_end_0
    .catch Le/m/e/u; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    :cond_2
    :goto_2
    return-object v2
.end method
