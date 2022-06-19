.class public final Le/a/h/o0/b$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/o0/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/i4/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h/o0/b;


# direct methods
.method public constructor <init>(Le/a/h/o0/b;)V
    .locals 0

    iput-object p1, p0, Le/a/h/o0/b$a;->b:Le/a/h/o0/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/o0/b$a;->b:Le/a/h/o0/b;

    .line 2
    iget-object v0, v0, Le/a/h/o0/b;->b:Landroid/content/Context;

    const-string v1, "null cannot be cast to non-null type com.truecaller.GraphHolder"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->O1()Le/a/i4/e;

    move-result-object v0

    return-object v0
.end method
