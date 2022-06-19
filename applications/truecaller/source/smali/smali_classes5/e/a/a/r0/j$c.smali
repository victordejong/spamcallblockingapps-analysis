.class public final Le/a/a/r0/j$c;
.super Le/a/b0/a/w/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/r0/j;->Sm()Le/a/b0/a/w/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/r0/j;


# direct methods
.method public constructor <init>(Le/a/a/r0/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/r0/j$c;->a:Le/a/a/r0/j;

    invoke-direct {p0}, Le/a/b0/a/w/b;-><init>()V

    return-void
.end method


# virtual methods
.method public No()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/r0/j$c;->a:Le/a/a/r0/j;

    invoke-virtual {v0}, Le/a/a/r0/j;->SA()Le/a/a/r0/m;

    move-result-object v0

    invoke-virtual {v0}, Le/a/a/r0/m;->Qj()V

    return-void
.end method
