.class public final Le/a/d/c/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/t;->Lj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c/t;


# direct methods
.method public constructor <init>(Le/a/d/c/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/d/c/t$a;->a:Le/a/d/c/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c/t$a;->a:Le/a/d/c/t;

    invoke-virtual {v0}, Le/a/d/c/t;->Lj()V

    return-void
.end method
