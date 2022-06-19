.class public final synthetic Le/m/a/c/c1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/c/c1/m$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/c1/m$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/c1/c;->a:Le/m/a/c/c1/m$a;

    iput p2, p0, Le/m/a/c/c1/c;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/m/a/c/c1/c;->a:Le/m/a/c/c1/m$a;

    iget v1, p0, Le/m/a/c/c1/c;->b:I

    .line 1
    iget-object v0, v0, Le/m/a/c/c1/m$a;->b:Le/m/a/c/c1/m;

    .line 2
    sget v2, Le/m/a/c/q1/d0;->a:I

    .line 3
    invoke-interface {v0, v1}, Le/m/a/c/c1/m;->b(I)V

    return-void
.end method
