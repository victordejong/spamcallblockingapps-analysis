.class public final Le/a/g/j/q0$b$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/j/q0$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/g/j/q0$b;


# direct methods
.method public constructor <init>(Le/a/g/j/q0$b;)V
    .locals 0

    iput-object p1, p0, Le/a/g/j/q0$b$a;->b:Le/a/g/j/q0$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    iget-object p1, p0, Le/a/g/j/q0$b$a;->b:Le/a/g/j/q0$b;

    iget-object p1, p1, Le/a/g/j/q0$b;->d:Ls1/z/b/l;

    sget-object v0, Lcom/truecaller/acs/util/VideoCallerIdAcsMoreOption;->HIDE:Lcom/truecaller/acs/util/VideoCallerIdAcsMoreOption;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
