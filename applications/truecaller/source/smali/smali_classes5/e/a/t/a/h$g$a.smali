.class public final Le/a/t/a/h$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/t/a/h$g;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/t/a/h$g;


# direct methods
.method public constructor <init>(Le/a/t/a/h$g;)V
    .locals 0

    iput-object p1, p0, Le/a/t/a/h$g$a;->a:Le/a/t/a/h$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/t/a/h$g$a;->a:Le/a/t/a/h$g;

    iget-object v0, v0, Le/a/t/a/h$g;->a:Le/a/t/a/h;

    .line 2
    sget v1, Le/a/t/a/h;->w:I

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Le/a/t/a/h;->k(I)V

    .line 4
    iget-object v0, p0, Le/a/t/a/h$g$a;->a:Le/a/t/a/h$g;

    iget-object v0, v0, Le/a/t/a/h$g;->a:Le/a/t/a/h;

    invoke-virtual {v0}, Le/a/t/a/h;->l()V

    return-void
.end method
