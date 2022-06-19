.class public Le/l/a/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/l/a/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/l/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/l/a/d;


# direct methods
.method public constructor <init>(Le/l/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/l/a/d$e;->a:Le/l/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/l/a/d$e;->a:Le/l/a/d;

    iget-object v0, v0, Le/l/a/d;->t0:Le/l/a/b$c;

    invoke-interface {v0, p1}, Le/l/a/b$c;->a(F)V

    return-void
.end method
