.class public Le/h/a/c/v0/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/h/a/c/y0/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/v0/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/h/a/c/y0/g<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/v0/b;


# direct methods
.method public constructor <init>(Le/h/a/c/v0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/v0/b$b;->a:Le/h/a/c/v0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Le/h/a/c/v0/b$b;->a:Le/h/a/c/v0/b;

    sget-object v0, Le/h/a/c/v0/b$e;->c:Le/h/a/c/v0/b$e;

    .line 3
    invoke-virtual {p1, v0}, Le/h/a/c/v0/b;->h(Le/h/a/c/v0/b$e;)V

    return-void
.end method
