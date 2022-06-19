.class public final Le/a/g/a/a/a$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g/a/f0/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/a/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/g/a/a/a;


# direct methods
.method public constructor <init>(Le/a/g/a/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/g/a/a/a$m;->a:Le/a/g/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/g/a/a/a$m;->a:Le/a/g/a/a/a;

    invoke-virtual {v0}, Le/a/g/a/a/a;->VA()Le/a/g/a/a/g;

    move-result-object v0

    check-cast v0, Le/a/g/a/m;

    .line 2
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g/a/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/g/a/h;->finish()V

    :cond_0
    return-void
.end method
