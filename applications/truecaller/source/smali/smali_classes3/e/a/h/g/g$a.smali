.class public final Le/a/h/g/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/g/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/g/g;->t(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/g/g;


# direct methods
.method public constructor <init>(Le/a/h/g/g;)V
    .locals 0

    iput-object p1, p0, Le/a/h/g/g$a;->a:Le/a/h/g/g;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "any"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/g/g$a;->a:Le/a/h/g/g;

    .line 2
    iget-object v0, v0, Le/a/h/g/g;->f:Le/a/h/g/n;

    .line 3
    check-cast p1, Lcom/truecaller/data/entity/CallRecording;

    invoke-interface {v0, p1}, Le/a/h/g/n;->M1(Lcom/truecaller/data/entity/CallRecording;)Le/a/r2/x;

    move-result-object p1

    .line 4
    iget-object v0, p0, Le/a/h/g/g$a;->a:Le/a/h/g/g;

    .line 5
    iget-object v0, v0, Le/a/h/g/g;->o:Le/a/r2/l;

    .line 6
    invoke-interface {v0}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v0

    new-instance v1, Le/a/h/g/g$a$a;

    invoke-direct {v1, p0}, Le/a/h/g/g$a$a;-><init>(Le/a/h/g/g$a;)V

    invoke-virtual {p1, v0, v1}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "any"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
