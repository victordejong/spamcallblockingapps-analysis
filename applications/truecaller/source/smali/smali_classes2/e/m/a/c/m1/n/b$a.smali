.class public final Le/m/a/c/m1/n/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/m1/n/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[I

.field public final d:[I


# direct methods
.method public constructor <init>(I[I[I[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/m/a/c/m1/n/b$a;->a:I

    .line 3
    iput-object p2, p0, Le/m/a/c/m1/n/b$a;->b:[I

    .line 4
    iput-object p3, p0, Le/m/a/c/m1/n/b$a;->c:[I

    .line 5
    iput-object p4, p0, Le/m/a/c/m1/n/b$a;->d:[I

    return-void
.end method
