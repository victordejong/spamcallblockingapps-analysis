.class public final synthetic Le/m/a/b/j/c0/h/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/d0/b$a;


# instance fields
.field public final synthetic a:Le/m/a/b/j/c0/i/a0;


# direct methods
.method public synthetic constructor <init>(Le/m/a/b/j/c0/i/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/b/j/c0/h/b;->a:Le/m/a/b/j/c0/i/a0;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le/m/a/b/j/c0/h/b;->a:Le/m/a/b/j/c0/i/a0;

    invoke-interface {v0}, Le/m/a/b/j/c0/i/a0;->x()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
