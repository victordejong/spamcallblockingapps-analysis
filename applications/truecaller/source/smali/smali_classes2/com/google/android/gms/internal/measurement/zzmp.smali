.class public final Lcom/google/android/gms/internal/measurement/zzmp;
.super Ljava/lang/IllegalArgumentException;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .locals 3

    const/16 v0, 0x36

    const-string v1, "Unpaired surrogate at index "

    const-string v2, " of "

    .line 1
    invoke-static {v0, v1, p1, v2, p2}, Le/d/c/a/a;->N1(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method
